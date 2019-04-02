.class Lcom/android/camera/TemplatePhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "TemplatePhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TemplatePhotoModule;
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
            "Lcom/android/camera/TemplatePhotoModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 311
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 313
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TemplatePhotoModule;

    .line 318
    .local v0, "module":Lcom/android/camera/TemplatePhotoModule;
    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 321
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 323
    :pswitch_0
    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$800(Lcom/android/camera/TemplatePhotoModule;)V

    goto :goto_0

    .line 328
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/TemplatePhotoModule;->access$900(Lcom/android/camera/TemplatePhotoModule;I)V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
