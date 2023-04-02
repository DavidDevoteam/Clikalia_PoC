view: bigquery_ml {
  derived_table: {
    sql: |
    WITH input_params AS (
    SELECT
    ${param_one} AS param_one,
    ${param_two} AS param_two
    )

    SELECT
    predicted_column
    FROM
    ML.PREDICT(MODEL `my_dataset.my_model`,
    (SELECT * FROM input_params)) ;;
  }
  parameter: param_one {
      type: string
    }
  parameter: param_two{
      type: string
    }
}
