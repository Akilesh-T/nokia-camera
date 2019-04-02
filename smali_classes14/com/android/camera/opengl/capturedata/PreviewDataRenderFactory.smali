.class public Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;
.super Ljava/lang/Object;
.source "PreviewDataRenderFactory.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mIsAOP:Z

.field private mIsFront:Z

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mOrientation:I

.field private mPreviewBarCodeRender:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

.field private mPreviewDataRender:Lcom/android/camera/opengl/capturedata/PreviewDataRender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PreviewDataRenderFactory"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/app/AppController;ZZLcom/android/camera/async/Lifetime;IILcom/android/camera/async/MainThread;)V
    .locals 7
    .param p1, "captureModuleUI"    # Lcom/android/camera/CaptureModuleUI;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "isBarCode"    # Z
    .param p4, "isOpenMicroVideo"    # Z
    .param p5, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "mainThread"    # Lcom/android/camera/async/MainThread;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    iput-object p8, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 39
    if-eqz p4, :cond_0

    .line 40
    new-instance v0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;

    invoke-direct {v0, p5, p6, p7}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;-><init>(Lcom/android/camera/async/Lifetime;II)V

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewDataRender:Lcom/android/camera/opengl/capturedata/PreviewDataRender;

    .line 42
    :cond_0
    if-eqz p3, :cond_1

    .line 43
    new-instance v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    iget-object v6, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mMainThread:Lcom/android/camera/async/MainThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;-><init>(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/app/AppController;Lcom/android/camera/async/Lifetime;IILcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewBarCodeRender:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewDataRender:Lcom/android/camera/opengl/capturedata/PreviewDataRender;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewDataRender:Lcom/android/camera/opengl/capturedata/PreviewDataRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->close()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewBarCodeRender:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewBarCodeRender:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->close()V

    .line 58
    :cond_1
    return-void
.end method

.method public getBarCodePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewBarCodeRender:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewBarCodeRender:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewDataRender:Lcom/android/camera/opengl/capturedata/PreviewDataRender;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mOrientation:I

    return v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewDataRender:Lcom/android/camera/opengl/capturedata/PreviewDataRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewDataRender:Lcom/android/camera/opengl/capturedata/PreviewDataRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public getVideoFrameData()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/opengl/capturedata/YUVData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewDataRender:Lcom/android/camera/opengl/capturedata/PreviewDataRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->getVideoFrameData()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isAOP()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mIsAOP:Z

    return v0
.end method

.method public isFront()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mIsFront:Z

    return v0
.end method

.method public setAOP(Z)V
    .locals 0
    .param p1, "AOP"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mIsAOP:Z

    .line 74
    return-void
.end method

.method public setFront(Z)V
    .locals 0
    .param p1, "front"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mIsFront:Z

    .line 82
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mOrientation:I

    .line 90
    return-void
.end method

.method public stopBarcode()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewBarCodeRender:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->mPreviewBarCodeRender:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->stopBarcode()V

    .line 109
    :cond_0
    return-void
.end method
