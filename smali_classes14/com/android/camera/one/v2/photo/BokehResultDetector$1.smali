.class Lcom/android/camera/one/v2/photo/BokehResultDetector$1;
.super Ljava/lang/Object;
.source "BokehResultDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/BokehResultDetector;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/BokehResultDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/photo/BokehResultDetector;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector$1;->this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector$1;->this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/BokehResultDetector;->access$000(Lcom/android/camera/one/v2/photo/BokehResultDetector;)Lcom/android/camera/one/v2/photo/BokehResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector$1;->this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/BokehResultDetector;->access$000(Lcom/android/camera/one/v2/photo/BokehResultDetector;)Lcom/android/camera/one/v2/photo/BokehResultListener;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector$1;->this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/BokehResultDetector;->access$100(Lcom/android/camera/one/v2/photo/BokehResultDetector;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/one/v2/photo/BokehResultListener;->onBokehResultChange(I)V

    .line 38
    :cond_0
    return-void
.end method
