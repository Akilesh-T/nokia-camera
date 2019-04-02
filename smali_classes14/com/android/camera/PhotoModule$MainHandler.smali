.class Lcom/android/camera/PhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
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
            "Lcom/android/camera/PhotoModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 534
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 535
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 536
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/camera/PhotoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhotoModule;

    .line 541
    .local v0, "module":Lcom/android/camera/PhotoModule;
    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 544
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 546
    :pswitch_0
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 551
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;I)V

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
