test_that("Object type 'N' must be numeric",{expect_error( summarize_N_from_C(datateachr::vancouver_trees, cultivar_name , cultivar_name ))
}
)

test_that("Object type 'C' must be character class",{expect_error( summarize_N_from_C(datateachr::vancouver_trees, diameter , diameter ))
}
)

test_that("Check that output is of expected type", {expect_s3_class(summarize_N_from_C(datateachr::vancouver_trees, diameter, cultivar_name ), c("grouped_df", "tbl_df", "tbl","data.frame"))
}
)


test_that("Check that the function must have a dataframe ",{expect_true(is.data.frame((datateachr::vancouver_trees )))
}
)

