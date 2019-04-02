.class public Lcom/pedro/encoder/input/video/FpsController;
.super Ljava/lang/Object;
.source "FpsController.java"


# instance fields
.field private cont:I

.field private ignoredFps:I


# direct methods
.method public constructor <init>(ILandroid/hardware/Camera;)V
    .locals 3
    .param p1, "fps"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v2, p0, Lcom/pedro/encoder/input/video/FpsController;->ignoredFps:I

    .line 12
    iput v2, p0, Lcom/pedro/encoder/input/video/FpsController;->cont:I

    .line 15
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 16
    .local v0, "fpsCamera":[I
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 17
    aget v1, v0, v2

    div-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, p1

    iput v1, p0, Lcom/pedro/encoder/input/video/FpsController;->ignoredFps:I

    .line 18
    return-void
.end method


# virtual methods
.method public fpsIsValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 21
    iget v1, p0, Lcom/pedro/encoder/input/video/FpsController;->cont:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/pedro/encoder/input/video/FpsController;->cont:I

    iget v2, p0, Lcom/pedro/encoder/input/video/FpsController;->ignoredFps:I

    if-ge v1, v2, :cond_0

    .line 25
    :goto_0
    return v0

    .line 24
    :cond_0
    iput v0, p0, Lcom/pedro/encoder/input/video/FpsController;->cont:I

    .line 25
    const/4 v0, 0x1

    goto :goto_0
.end method
