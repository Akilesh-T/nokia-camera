.class Lcom/android/camera/BeautyModule$MainHandler;
.super Landroid/os/Handler;
.source "BeautyModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
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
            "Lcom/android/camera/BeautyModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 335
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 336
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 337
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/camera/BeautyModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/BeautyModule;

    .line 342
    .local v0, "module":Lcom/android/camera/BeautyModule;
    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 345
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 347
    :pswitch_0
    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$800(Lcom/android/camera/BeautyModule;)V

    goto :goto_0

    .line 352
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BeautyModule;->access$900(Lcom/android/camera/BeautyModule;I)V

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
