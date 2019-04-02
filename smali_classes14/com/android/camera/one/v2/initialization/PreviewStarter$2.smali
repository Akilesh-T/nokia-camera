.class Lcom/android/camera/one/v2/initialization/PreviewStarter$2;
.super Ljava/lang/Object;
.source "PreviewStarter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/PreviewStarter;->startPreview(Lcom/android/camera/async/Lifetime;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Landroid/support/v4/util/Pair",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
        "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/PreviewStarter;

.field final synthetic val$burstFacade:Lcom/android/camera/burst/BurstFacade;

.field final synthetic val$burstImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

.field final synthetic val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field final synthetic val$imageGeneratorProvider:Lcom/android/camera/opengl/image/ImageGeneratorProvider;

.field final synthetic val$pictureImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

.field final synthetic val$previewCallbackSurface:Landroid/view/Surface;

.field final synthetic val$previewLifetime:Lcom/android/camera/async/Lifetime;

.field final synthetic val$rawImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

.field final synthetic val$reprocessImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

.field final synthetic val$slavePictureImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

.field final synthetic val$slavePreviewCallbackSurface:Landroid/view/Surface;

.field final synthetic val$slaveSurface:Landroid/view/Surface;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/PreviewStarter;Lcom/android/camera/async/Lifetime;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/PreviewStarter;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->this$0:Lcom/android/camera/one/v2/initialization/PreviewStarter;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$previewLifetime:Lcom/android/camera/async/Lifetime;

    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$slaveSurface:Landroid/view/Surface;

    iput-object p5, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$previewCallbackSurface:Landroid/view/Surface;

    iput-object p6, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$slavePreviewCallbackSurface:Landroid/view/Surface;

    iput-object p7, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$pictureImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object p8, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$slavePictureImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object p9, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$burstImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object p10, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$reprocessImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object p11, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$rawImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object p12, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$imageGeneratorProvider:Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    iput-object p13, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    iput-object p14, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/support/v4/util/Pair;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 17
    .param p1    # Landroid/support/v4/util/Pair;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->this$0:Lcom/android/camera/one/v2/initialization/PreviewStarter;

    invoke-static {v1}, Lcom/android/camera/one/v2/initialization/PreviewStarter;->access$200(Lcom/android/camera/one/v2/initialization/PreviewStarter;)Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$previewLifetime:Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$surface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$slaveSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$previewCallbackSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$slavePreviewCallbackSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$pictureImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$slavePictureImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$burstImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$reprocessImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$rawImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$imageGeneratorProvider:Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v16, v0

    invoke-interface/range {v1 .. v16}, Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;->onCameraCaptureSessionCreated(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    .line 283
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    check-cast p1, Landroid/support/v4/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;->apply(Landroid/support/v4/util/Pair;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
