.class Lcom/android/camera/ManualModule$MainHandler;
.super Landroid/os/Handler;
.source "ManualModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ManualModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 375
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 376
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 377
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/camera/ManualModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualModule;

    .line 382
    .local v0, "module":Lcom/android/camera/ManualModule;
    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 385
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 387
    :pswitch_0
    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$1300(Lcom/android/camera/ManualModule;)V

    goto :goto_0

    .line 392
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ManualModule;->access$1400(Lcom/android/camera/ManualModule;I)V

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
