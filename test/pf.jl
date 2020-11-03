
@testset "test SeawayPipeline System" begin
    data = parse_file("../test/data/pipeline_2012_seaway_m3_per_h.m")
    result = run_opf(data, LPPetroleumModel, ipopt_solver)
    make_si_units!(result["solution"])

    @test isapprox(result["solution"]["pipe"]["3"]["q_pipe"],  1284.22, atol = 1e-1)
    @test isapprox(result["solution"]["pipe"]["9"]["q_pipe"],  3472.03, atol = 1e-1)
    @test isapprox(result["solution"]["pipe"]["15"]["q_pipe"], 500.0, atol = 1e-1)
    @test isapprox(result["solution"]["pipe"]["22"]["q_pipe"], 2584.12, atol = 1e-1)
end

@testset "test one pipe" begin
    data = parse_file("../test/data/one_pipe.m")
    result = run_opf(data, LPPetroleumModel, ipopt_solver)
    make_si_units!(result["solution"])

    @test isapprox(result["solution"]["pipe"]["30"]["q_pipe"],  3600, atol = 1e-1)
end

@testset "test example from article" begin
    data = parse_file("../test/data/example_from_article.m")
    result = run_opf(data, LPPetroleumModel, ipopt_solver)
    make_si_units!(result["solution"])

    @test isapprox(result["solution"]["pipe"]["4"]["q_pipe"],  3750., atol = 1e-1)
    @test isapprox(result["solution"]["pipe"]["10"]["q_pipe"], 3750., atol = 1e-1)
    @test isapprox(result["solution"]["pipe"]["12"]["q_pipe"], 3960, atol = 1e-1)
    @test isapprox(result["solution"]["pipe"]["15"]["q_pipe"], 4110, atol = 1e-1)
end

@testset "test case" begin
    data = parse_file("../test/data/case.m")
    result = run_opf(data, LPPetroleumModel, ipopt_solver)
    make_si_units!(result["solution"])

    @test isapprox(result["solution"]["pipe"]["33"]["q_pipe"],  1275.59, atol = 1e-1)
end

@testset "test small case" begin
    data = parse_file("../test/data/small_case.m")
    result = run_opf(data, LPPetroleumModel, ipopt_solver)
    make_si_units!(result["solution"])

    @test isapprox(result["solution"]["pipe"]["33"]["q_pipe"], 2638.84, atol = 1e-1)
end