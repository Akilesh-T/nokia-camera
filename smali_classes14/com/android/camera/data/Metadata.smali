.class public Lcom/android/camera/data/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# static fields
.field private static final ROTATE_270:Ljava/lang/String; = "270"

.field private static final ROTATE_90:Ljava/lang/String; = "90"


# instance fields
.field private mHasRgbzData:Z

.field private mIsLoaded:Z

.field private mVideoHeight:I

.field private mVideoOrientation:Ljava/lang/String;

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/android/camera/data/Metadata;->mIsLoaded:Z

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/data/Metadata;->mVideoOrientation:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/android/camera/data/Metadata;->mVideoWidth:I

    .line 35
    iput v1, p0, Lcom/android/camera/data/Metadata;->mVideoHeight:I

    .line 37
    iput-boolean v2, p0, Lcom/android/camera/data/Metadata;->mHasRgbzData:Z

    return-void
.end method


# virtual methods
.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/data/Metadata;->mVideoHeight:I

    return v0
.end method

.method public getVideoOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/data/Metadata;->mVideoOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/data/Metadata;->mVideoWidth:I

    return v0
.end method

.method public isHasRgbzData()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata;->mHasRgbzData:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata;->mIsLoaded:Z

    return v0
.end method

.method public isVideoRotated()Z
    .locals 2

    .prologue
    .line 56
    const-string v0, "90"

    iget-object v1, p0, Lcom/android/camera/data/Metadata;->mVideoOrientation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "270"

    iget-object v1, p0, Lcom/android/camera/data/Metadata;->mVideoOrientation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasRgbzData(Z)V
    .locals 0
    .param p1, "hasRgbzData"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/camera/data/Metadata;->mHasRgbzData:Z

    .line 81
    return-void
.end method

.method public setLoaded(Z)V
    .locals 0
    .param p1, "isLoaded"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/camera/data/Metadata;->mIsLoaded:Z

    .line 45
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0
    .param p1, "videoHeight"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/camera/data/Metadata;->mVideoHeight:I

    .line 73
    return-void
.end method

.method public setVideoOrientation(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoOrientation"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/data/Metadata;->mVideoOrientation:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0
    .param p1, "videoWidth"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/data/Metadata;->mVideoWidth:I

    .line 65
    return-void
.end method
