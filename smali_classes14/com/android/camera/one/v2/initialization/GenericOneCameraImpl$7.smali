.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$7;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

.field final synthetic val$listener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$7;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$7;->val$listener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$7;->val$listener:Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;->onReadyStateChanged(Z)V

    .line 301
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 297
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$7;->onCallback(Ljava/lang/Boolean;)V

    return-void
.end method
