.class public Lorg/junit/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[B[B)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [B
    .param p2, "actuals"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 341
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[C[C)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [C
    .param p2, "actuals"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[D[DD)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [D
    .param p2, "actuals"    # [D
    .param p3, "delta"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Lorg/junit/internal/InexactComparisonCriteria;

    invoke-direct {v0, p3, p4}, Lorg/junit/internal/InexactComparisonCriteria;-><init>(D)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/junit/internal/InexactComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[F[FF)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [F
    .param p2, "actuals"    # [F
    .param p3, "delta"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Lorg/junit/internal/InexactComparisonCriteria;

    invoke-direct {v0, p3}, Lorg/junit/internal/InexactComparisonCriteria;-><init>(F)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/junit/internal/InexactComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[I[I)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [I
    .param p2, "actuals"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[J[J)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [J
    .param p2, "actuals"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [Ljava/lang/Object;
    .param p2, "actuals"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[S[S)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [S
    .param p2, "actuals"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[Z[Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [Z
    .param p2, "actuals"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public static assertArrayEquals([B[B)V
    .locals 1
    .param p0, "expecteds"    # [B
    .param p1, "actuals"    # [B

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[B[B)V

    .line 353
    return-void
.end method

.method public static assertArrayEquals([C[C)V
    .locals 1
    .param p0, "expecteds"    # [C
    .param p1, "actuals"    # [C

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[C[C)V

    .line 378
    return-void
.end method

.method public static assertArrayEquals([D[DD)V
    .locals 2
    .param p0, "expecteds"    # [D
    .param p1, "actuals"    # [D
    .param p2, "delta"    # D

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[D[DD)V

    .line 484
    return-void
.end method

.method public static assertArrayEquals([F[FF)V
    .locals 1
    .param p0, "expecteds"    # [F
    .param p1, "actuals"    # [F
    .param p2, "delta"    # F

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[F[FF)V

    .line 515
    return-void
.end method

.method public static assertArrayEquals([I[I)V
    .locals 1
    .param p0, "expecteds"    # [I
    .param p1, "actuals"    # [I

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[I[I)V

    .line 428
    return-void
.end method

.method public static assertArrayEquals([J[J)V
    .locals 1
    .param p0, "expecteds"    # [J
    .param p1, "actuals"    # [J

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[J[J)V

    .line 453
    return-void
.end method

.method public static assertArrayEquals([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expecteds"    # [Ljava/lang/Object;
    .param p1, "actuals"    # [Ljava/lang/Object;

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public static assertArrayEquals([S[S)V
    .locals 1
    .param p0, "expecteds"    # [S
    .param p1, "actuals"    # [S

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[S[S)V

    .line 403
    return-void
.end method

.method public static assertArrayEquals([Z[Z)V
    .locals 1
    .param p0, "expecteds"    # [Z
    .param p1, "actuals"    # [Z

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[Z[Z)V

    .line 328
    return-void
.end method

.method public static assertEquals(DD)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DD)V

    .line 657
    return-void
.end method

.method public static assertEquals(DDD)V
    .locals 8
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .prologue
    .line 683
    const/4 v1, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DDD)V

    .line 684
    return-void
.end method

.method public static assertEquals(FFF)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;FFF)V

    .line 701
    return-void
.end method

.method public static assertEquals(JJ)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 632
    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DD)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 667
    const-string v0, "Use assertEquals(expected, actual, delta) to compare floating-point numbers"

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DDD)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .prologue
    .line 552
    invoke-static/range {p1 .. p6}, Lorg/junit/Assert;->doubleIsDifferent(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/junit/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;FFF)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .prologue
    .line 574
    invoke-static {p1, p2, p3}, Lorg/junit/Assert;->floatIsDifferent(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/junit/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 577
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .prologue
    .line 644
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 645
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/junit/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-static {p1, p2}, Lorg/junit/Assert;->equalsRegardingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 114
    if-nez p0, :cond_1

    const-string v0, ""

    .line 115
    .local v0, "cleanMessage":Ljava/lang/String;
    :goto_1
    new-instance v1, Lorg/junit/ComparisonFailure;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "expected":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "actual":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p2}, Lorg/junit/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .end local v0    # "cleanMessage":Ljava/lang/String;
    .restart local p1    # "expected":Ljava/lang/Object;
    .restart local p2    # "actual":Ljava/lang/Object;
    :cond_1
    move-object v0, p0

    .line 114
    goto :goto_1

    .line 118
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [Ljava/lang/Object;
    .param p2, "actuals"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 876
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 877
    return-void
.end method

.method public static assertEquals([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "expecteds"    # [Ljava/lang/Object;
    .param p1, "actuals"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 893
    invoke-static {p0, p1}, Lorg/junit/Assert;->assertArrayEquals([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 894
    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .prologue
    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static assertFalse(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/junit/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public static assertNotEquals(DDD)V
    .locals 8
    .param p0, "unexpected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .prologue
    .line 249
    const/4 v1, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lorg/junit/Assert;->assertNotEquals(Ljava/lang/String;DDD)V

    .line 250
    return-void
.end method

.method public static assertNotEquals(FFF)V
    .locals 1
    .param p0, "unexpected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/junit/Assert;->assertNotEquals(Ljava/lang/String;FFF)V

    .line 266
    return-void
.end method

.method public static assertNotEquals(JJ)V
    .locals 2
    .param p0, "unexpected"    # J
    .param p2, "actual"    # J

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/junit/Assert;->assertNotEquals(Ljava/lang/String;JJ)V

    .line 212
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "unexpected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;DDD)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .prologue
    .line 231
    invoke-static/range {p1 .. p6}, Lorg/junit/Assert;->doubleIsDifferent(DDD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/junit/Assert;->failEquals(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    :cond_0
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;FFF)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .prologue
    .line 596
    invoke-static {p1, p2, p3}, Lorg/junit/Assert;->floatIsDifferent(FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/junit/Assert;->failEquals(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    :cond_0
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;JJ)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # J
    .param p3, "actual"    # J

    .prologue
    .line 198
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 199
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/junit/Assert;->failEquals(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 160
    invoke-static {p1, p2}, Lorg/junit/Assert;->equalsRegardingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0, p2}, Lorg/junit/Assert;->failEquals(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/junit/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 712
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 713
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "unexpected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 812
    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 797
    if-ne p1, p2, :cond_0

    .line 798
    invoke-static {p0}, Lorg/junit/Assert;->failSame(Ljava/lang/String;)V

    .line 800
    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 747
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/junit/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 738
    :goto_0
    return-void

    .line 737
    :cond_0
    invoke-static {p0, p1}, Lorg/junit/Assert;->failNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 768
    if-ne p1, p2, :cond_0

    .line 772
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static assertThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/hamcrest/Matcher",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "actual":Ljava/lang/Object;, "TT;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    const-string v0, ""

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 924
    return-void
.end method

.method public static assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 0
    .param p0, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/hamcrest/Matcher",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, "actual":Ljava/lang/Object;, "TT;"
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1, p2}, Lorg/hamcrest/MatcherAssert;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 957
    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-static {p0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method private static doubleIsDifferent(DDD)Z
    .locals 4
    .param p0, "d1"    # D
    .param p2, "d2"    # D
    .param p4, "delta"    # D

    .prologue
    const/4 v0, 0x0

    .line 602
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 605
    :cond_1
    sub-double v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, p4

    if-lez v1, :cond_0

    .line 609
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static equalsRegardingNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 123
    if-nez p0, :cond_1

    .line 124
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p0, p1}, Lorg/junit/Assert;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static fail()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static failEquals(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 179
    const-string v0, "Values should be different. "

    .line 180
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 834
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method private static failNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 751
    const-string v0, ""

    .line 752
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected null, but was:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method private static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 824
    const-string v0, ""

    .line 825
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected same:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> was not:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method private static failSame(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 815
    const-string v0, ""

    .line 816
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected not same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method private static floatIsDifferent(FFF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F
    .param p2, "delta"    # F

    .prologue
    const/4 v0, 0x0

    .line 613
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v0

    .line 616
    :cond_1
    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-lez v1, :cond_0

    .line 620
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 838
    const-string v2, ""

    .line 839
    .local v2, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 842
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "expectedString":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "actualString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, v1}, Lorg/junit/Assert;->formatClassAndValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, v0}, Lorg/junit/Assert;->formatClassAndValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 849
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expected:<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> but was:<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static formatClassAndValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "valueString"    # Ljava/lang/String;

    .prologue
    .line 855
    if-nez p0, :cond_0

    const-string v0, "null"

    .line 856
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 855
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # Ljava/lang/Object;
    .param p2, "actuals"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lorg/junit/internal/ExactComparisonCriteria;

    invoke-direct {v0}, Lorg/junit/internal/ExactComparisonCriteria;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lorg/junit/internal/ExactComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method private static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
