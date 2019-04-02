.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$4;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/PointF;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

.field final synthetic val$listener:Lcom/android/camera/one/OneCamera$FocusStateListener;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$FocusStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$4;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$4;->val$listener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/util/Pair;)V
    .locals 5
    .param p1    # Landroid/util/Pair;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "afState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;"
    const-wide/16 v0, -0x1

    .line 239
    .local v0, "frameNumber":J
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$4;->val$listener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    if-eqz v2, :cond_0

    .line 240
    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$4;->val$listener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/one/v2/AutoFocusHelper;->stateFromCamera2State(I)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v4

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-interface {v3, v4, v2, v0, v1}, Lcom/android/camera/one/OneCamera$FocusStateListener;->onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V

    .line 242
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
    .line 233
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$4;->onCallback(Landroid/util/Pair;)V

    return-void
.end method
