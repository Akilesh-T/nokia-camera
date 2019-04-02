.class public Lcom/android/camera/scenerecognition/SceneParmeter;
.super Ljava/lang/Object;
.source "SceneParmeter.java"


# instance fields
.field private mAWBRGBGains:Ljava/lang/String;

.field private mContrast:Ljava/lang/String;

.field private mExposure:Ljava/lang/String;

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mSaturation:Ljava/lang/String;

.field private mSharpness:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "saturation"    # Ljava/lang/String;
    .param p4, "contrast"    # Ljava/lang/String;
    .param p5, "sharpness"    # Ljava/lang/String;
    .param p6, "exposure"    # Ljava/lang/String;
    .param p7, "AWBRGBGains"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mId:I

    .line 14
    iput-object p2, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mSaturation:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mContrast:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mSharpness:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mExposure:Ljava/lang/String;

    .line 19
    iput-object p7, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mAWBRGBGains:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getAWBRGBGains()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mAWBRGBGains:Ljava/lang/String;

    return-object v0
.end method

.method public getContrast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mContrast:Ljava/lang/String;

    return-object v0
.end method

.method public getExposure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mExposure:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSaturation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mSaturation:Ljava/lang/String;

    return-object v0
.end method

.method public getSharpness()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mSharpness:Ljava/lang/String;

    return-object v0
.end method

.method public setmAWBRGBGains(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAWBRGBGains"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mAWBRGBGains:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setmContrast(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContrast"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mContrast:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setmExposure(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExposure"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mExposure:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setmId(I)V
    .locals 0
    .param p1, "mId"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mId:I

    .line 24
    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setmSaturation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSaturation"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mSaturation:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setmSharpness(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSharpness"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mSharpness:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const-string v0, ""

    .line 81
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSaturation==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mSaturation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContrast==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mContrast:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSharpness==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mSharpness:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExposure==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mExposure:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAWBRGBGains==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneParmeter;->mAWBRGBGains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0
.end method
