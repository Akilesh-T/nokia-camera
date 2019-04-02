.class public final Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;
.super Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;
.source "ResourceSurfaceTextureNexus4Impl.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final LARGEST_4x3_PREVIEW_SIZE_NEXUS4:Lcom/android/camera/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;->LARGEST_4x3_PREVIEW_SIZE_NEXUS4:Lcom/android/camera/util/Size;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/async/RefCountBase;Landroid/graphics/SurfaceTexture;Lcom/android/camera/captureintent/PreviewTransformCalculator;)V
    .locals 0
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
    .line 63
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;-><init>(Lcom/android/camera/async/RefCountBase;Landroid/graphics/SurfaceTexture;Lcom/android/camera/captureintent/PreviewTransformCalculator;)V

    .line 64
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
    .line 52
    .local p0, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;

    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    invoke-direct {v0, p0, p1, v2}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;-><init>(Lcom/android/camera/async/RefCountBase;Landroid/graphics/SurfaceTexture;Lcom/android/camera/captureintent/PreviewTransformCalculator;)V

    .line 56
    .local v0, "resourceSurfaceTexture":Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;
    new-instance v1, Lcom/android/camera/async/RefCountBase;

    invoke-direct {v1, v0}, Lcom/android/camera/async/RefCountBase;-><init>(Lcom/android/camera/async/SafeCloseable;)V

    return-object v1
.end method


# virtual methods
.method public setPreviewSize(Lcom/android/camera/util/Size;)V
    .locals 3
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->setPreviewSize(Lcom/android/camera/util/Size;)V

    .line 70
    invoke-static {p1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    .line 71
    .local v0, "previewAspectRatio":Lcom/android/camera/util/AspectRatio;
    invoke-virtual {p0}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl$1;-><init>(Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;Lcom/android/camera/util/AspectRatio;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 82
    invoke-static {}, Lcom/android/camera/util/AspectRatio;->of16x9()Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;->LARGEST_4x3_PREVIEW_SIZE_NEXUS4:Lcom/android/camera/util/Size;

    invoke-virtual {p0, v1}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;->updateSurfaceTextureDefaultBufferSize(Lcom/android/camera/util/Size;)V

    .line 85
    :cond_0
    return-void
.end method

.method public updatePreviewTransform()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
