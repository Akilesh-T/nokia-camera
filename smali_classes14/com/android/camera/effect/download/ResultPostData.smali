.class public Lcom/android/camera/effect/download/ResultPostData;
.super Ljava/lang/Object;
.source "ResultPostData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;
    }
.end annotation


# instance fields
.field private UUID:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/download/ResultPostData;->results:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/effect/download/ResultPostData;->results:Ljava/util/List;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/effect/download/ResultPostData;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;>;"
    iput-object p1, p0, Lcom/android/camera/effect/download/ResultPostData;->results:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "UUID"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/effect/download/ResultPostData;->UUID:Ljava/lang/String;

    .line 58
    return-void
.end method
