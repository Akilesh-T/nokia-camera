.class public Lorg/junit/ComparisonFailure;
.super Ljava/lang/AssertionError;
.source "ComparisonFailure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/ComparisonFailure$1;,
        Lorg/junit/ComparisonFailure$ComparisonCompactor;
    }
.end annotation


# static fields
.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fActual:Ljava/lang/String;

.field private fExpected:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object p2, p0, Lorg/junit/ComparisonFailure;->fExpected:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lorg/junit/ComparisonFailure;->fActual:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getActual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/junit/ComparisonFailure;->fActual:Ljava/lang/String;

    return-object v0
.end method

.method public getExpected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/junit/ComparisonFailure;->fExpected:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lorg/junit/ComparisonFailure$ComparisonCompactor;

    const/16 v1, 0x14

    iget-object v2, p0, Lorg/junit/ComparisonFailure;->fExpected:Ljava/lang/String;

    iget-object v3, p0, Lorg/junit/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/junit/ComparisonFailure$ComparisonCompactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
