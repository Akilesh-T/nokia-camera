.class Lcom/android/camera/one/v2/initialization/PreviewStarter$1;
.super Ljava/lang/Object;
.source "PreviewStarter.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/PreviewStarter;->startPreview(Lcom/android/camera/async/Lifetime;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/PreviewStarter;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/PreviewStarter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/PreviewStarter;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$1;->this$0:Lcom/android/camera/one/v2/initialization/PreviewStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$1;->this$0:Lcom/android/camera/one/v2/initialization/PreviewStarter;

    invoke-static {v0}, Lcom/android/camera/one/v2/initialization/PreviewStarter;->access$000(Lcom/android/camera/one/v2/initialization/PreviewStarter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$1;->this$0:Lcom/android/camera/one/v2/initialization/PreviewStarter;

    invoke-static {v0}, Lcom/android/camera/one/v2/initialization/PreviewStarter;->access$100(Lcom/android/camera/one/v2/initialization/PreviewStarter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter$1;->this$0:Lcom/android/camera/one/v2/initialization/PreviewStarter;

    invoke-static {v0}, Lcom/android/camera/one/v2/initialization/PreviewStarter;->access$100(Lcom/android/camera/one/v2/initialization/PreviewStarter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    :cond_0
    return-void
.end method
