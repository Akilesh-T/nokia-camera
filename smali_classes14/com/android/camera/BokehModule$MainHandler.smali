.class Lcom/android/camera/BokehModule$MainHandler;
.super Landroid/os/Handler;
.source "BokehModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
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
            "Lcom/android/camera/BokehModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 416
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 417
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 418
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 422
    iget-object v2, p0, Lcom/android/camera/BokehModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/BokehModule;

    .line 423
    .local v1, "module":Lcom/android/camera/BokehModule;
    if-nez v1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 426
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 428
    :pswitch_0
    invoke-static {v1}, Lcom/android/camera/BokehModule;->access$1200(Lcom/android/camera/BokehModule;)V

    goto :goto_0

    .line 433
    :pswitch_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/BokehModule;->access$1300(Lcom/android/camera/BokehModule;I)V

    goto :goto_0

    .line 438
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/BokehStatus;

    .line 439
    .local v0, "bokehStatus":Lcom/android/ex/camera2/portability/BokehStatus;
    invoke-static {v1, v0}, Lcom/android/camera/BokehModule;->access$1400(Lcom/android/camera/BokehModule;Lcom/android/ex/camera2/portability/BokehStatus;)V

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
