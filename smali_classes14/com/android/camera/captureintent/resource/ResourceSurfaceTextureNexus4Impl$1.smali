.class Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl$1;
.super Ljava/lang/Object;
.source "ResourceSurfaceTextureNexus4Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;->setPreviewSize(Lcom/android/camera/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;

.field final synthetic val$previewAspectRatio:Lcom/android/camera/util/AspectRatio;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;Lcom/android/camera/util/AspectRatio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;

    iput-object p2, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl$1;->val$previewAspectRatio:Lcom/android/camera/util/AspectRatio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl$1;->val$previewAspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 75
    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->toFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->updatePreviewAspectRatio(F)V

    .line 76
    return-void
.end method
