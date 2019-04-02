.class Lcom/android/camera/PIPPhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "PIPPhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
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
            "Lcom/android/camera/PIPPhotoModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/PIPPhotoModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 361
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 362
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 363
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PIPPhotoModule;

    .line 368
    .local v0, "module":Lcom/android/camera/PIPPhotoModule;
    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 371
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 373
    :pswitch_0
    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$600(Lcom/android/camera/PIPPhotoModule;)V

    goto :goto_0

    .line 378
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PIPPhotoModule;->access$700(Lcom/android/camera/PIPPhotoModule;I)V

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
