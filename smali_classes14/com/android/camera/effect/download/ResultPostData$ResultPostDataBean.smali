.class public Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;
.super Ljava/lang/Object;
.source "ResultPostData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/download/ResultPostData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultPostDataBean"
.end annotation


# instance fields
.field private resourceId:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private shelfId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getShelfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->shelfId:Ljava/lang/String;

    return-object v0
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->resourceId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->result:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setShelfId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shelfId"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->shelfId:Ljava/lang/String;

    .line 25
    return-void
.end method
