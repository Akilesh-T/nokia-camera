.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$5;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/Callback",
        "<",
        "Lcom/android/camera/one/OneCamera$LengsState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

.field final synthetic val$listener:Lcom/android/camera/one/OneCamera$LensStateListener;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$LensStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$5;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$5;->val$listener:Lcom/android/camera/one/OneCamera$LensStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/android/camera/one/OneCamera$LengsState;)V
    .locals 3
    .param p1, "lengsState"    # Lcom/android/camera/one/OneCamera$LengsState;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 255
    iget-boolean v0, p1, Lcom/android/camera/one/OneCamera$LengsState;->isActive:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$5;->val$listener:Lcom/android/camera/one/OneCamera$LensStateListener;

    iget v1, p1, Lcom/android/camera/one/OneCamera$LengsState;->lensDistance:F

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$5;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->access$200(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;)Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/OneCamera$LensStateListener;->onFocusDistance(FLcom/android/camera/ui/motion/LinearScale;)V

    .line 258
    :cond_0
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 252
    check-cast p1, Lcom/android/camera/one/OneCamera$LengsState;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$5;->onCallback(Lcom/android/camera/one/OneCamera$LengsState;)V

    return-void
.end method
