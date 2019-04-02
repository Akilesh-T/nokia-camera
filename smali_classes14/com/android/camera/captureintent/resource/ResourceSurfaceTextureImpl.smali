.class public Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;
.super Ljava/lang/Object;
.source "ResourceSurfaceTextureImpl.java"

# interfaces
.implements Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mPreviewLayoutSize:Lcom/android/camera/util/Size;

.field private mPreviewSize:Lcom/android/camera/util/Size;

.field private final mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

.field private final mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureDefaultBufferSize:Lcom/android/camera/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ResSurfaceTexture"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/async/RefCountBase;Landroid/graphics/SurfaceTexture;Lcom/android/camera/captureintent/PreviewTransformCalculator;)V
    .locals 2
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "previewTransformCalculator"    # Lcom/android/camera/captureintent/PreviewTransformCalculator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Landroid/graphics/SurfaceTexture;",
            "Lcom/android/camera/captureintent/PreviewTransformCalculator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 69
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 70
    iput-object p2, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 71
    iput-object p3, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 72
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewSize:Lcom/android/camera/util/Size;

    .line 73
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewLayoutSize:Lcom/android/camera/util/Size;

    .line 74
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mSurfaceTextureDefaultBufferSize:Lcom/android/camera/util/Size;

    .line 75
    return-void
.end method

.method public static create(Lcom/android/camera/async/RefCountBase;Landroid/graphics/SurfaceTexture;)Lcom/android/camera/async/RefCountBase;
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Landroid/graphics/SurfaceTexture;",
            ")",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;

    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    invoke-direct {v0, p0, p1, v2}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;-><init>(Lcom/android/camera/async/RefCountBase;Landroid/graphics/SurfaceTexture;Lcom/android/camera/captureintent/PreviewTransformCalculator;)V

    .line 61
    .local v0, "resourceSurfaceTexture":Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;
    new-instance v1, Lcom/android/camera/async/RefCountBase;

    invoke-direct {v1, v0}, Lcom/android/camera/async/RefCountBase;-><init>(Lcom/android/camera/async/SafeCloseable;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 156
    return-void
.end method

.method public createPreviewSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public getPreviewLayoutSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewLayoutSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public getPreviewSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public getResourceConstructed()Lcom/android/camera/async/RefCountBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public setPreviewLayoutSize(Lcom/android/camera/util/Size;)V
    .locals 1
    .param p1, "previewLayoutSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 119
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 122
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewLayoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewLayoutSize:Lcom/android/camera/util/Size;

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->updatePreviewTransform()V

    .line 126
    :cond_0
    return-void
.end method

.method public setPreviewSize(Lcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewSize:Lcom/android/camera/util/Size;

    .line 105
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl$1;-><init>(Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setPreviewSize(Lcom/android/camera/util/Size;)V

    .line 115
    return-void
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 138
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 139
    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Do nothing since mPreviewSize is 0"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewLayoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewLayoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    if-nez v1, :cond_3

    .line 144
    :cond_2
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Do nothing since mPreviewLayoutSize is 0"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v2, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewLayoutSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 150
    .local v0, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected updateSurfaceTextureDefaultBufferSize(Lcom/android/camera/util/Size;)V
    .locals 3
    .param p1, "defaultBufferSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 134
    return-void
.end method
