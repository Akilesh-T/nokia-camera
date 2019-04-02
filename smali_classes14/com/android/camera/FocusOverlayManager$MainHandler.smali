.class Lcom/android/camera/FocusOverlayManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/FocusOverlayManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/camera/FocusOverlayManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 185
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 186
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    .line 187
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FocusOverlayManager;

    .line 192
    .local v0, "manager":Lcom/android/camera/FocusOverlayManager;
    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_0
    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$000(Lcom/android/camera/FocusOverlayManager;)V

    .line 199
    invoke-static {v0}, Lcom/android/camera/FocusOverlayManager;->access$100(Lcom/android/camera/FocusOverlayManager;)Lcom/android/camera/FocusOverlayManager$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/FocusOverlayManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
