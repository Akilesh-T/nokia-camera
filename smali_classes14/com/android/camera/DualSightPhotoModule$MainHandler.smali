.class Lcom/android/camera/DualSightPhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "DualSightPhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightPhotoModule;
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
            "Lcom/android/camera/DualSightPhotoModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 376
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 377
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 378
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DualSightPhotoModule;

    .line 383
    .local v0, "module":Lcom/android/camera/DualSightPhotoModule;
    if-nez v0, :cond_0

    .line 406
    :goto_0
    :pswitch_0
    return-void

    .line 386
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$1300(Lcom/android/camera/DualSightPhotoModule;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 402
    :pswitch_2
    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1100(Lcom/android/camera/DualSightPhotoModule;)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
