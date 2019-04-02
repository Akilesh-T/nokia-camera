.class public Lcom/android/camera/scenerecognition/SceneClassifyLabel;
.super Ljava/lang/Object;
.source "SceneClassifyLabel.java"


# instance fields
.field private mId:[I

.field private mResultNum:I

.field private mScore:[F


# direct methods
.method public constructor <init>(I[I[F)V
    .locals 0
    .param p1, "resultNum"    # I
    .param p2, "id"    # [I
    .param p3, "score"    # [F

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mResultNum:I

    .line 10
    iput-object p2, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mId:[I

    .line 11
    iput-object p3, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mScore:[F

    .line 12
    return-void
.end method


# virtual methods
.method public getSCResultID()[I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mId:[I

    return-object v0
.end method

.method public getSCResultNum()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mResultNum:I

    return v0
.end method

.method public getSCResultScore()[F
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mScore:[F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    const-string v1, ""

    .line 29
    .local v1, "s":Ljava/lang/String;
    iget v2, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mResultNum:I

    if-lez v2, :cond_0

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mResultNum:I

    if-ge v0, v2, :cond_0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Score:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->mScore:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
