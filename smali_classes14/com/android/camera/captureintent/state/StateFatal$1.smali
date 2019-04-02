.class Lcom/android/camera/captureintent/state/StateFatal$1;
.super Ljava/lang/Object;
.source "StateFatal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateFatal;->onEnter()Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateFatal;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateFatal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateFatal;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateFatal$1;->this$0:Lcom/android/camera/captureintent/state/StateFatal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateFatal$1;->this$0:Lcom/android/camera/captureintent/state/StateFatal;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateFatal;->access$000(Lcom/android/camera/captureintent/state/StateFatal;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 54
    return-void
.end method
