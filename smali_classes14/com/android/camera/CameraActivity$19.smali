.class Lcom/android/camera/CameraActivity$19;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->preloadFilmstripItems(Landroid/support/v4/view/AsyncLayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/android/camera/CameraActivity$19;->this$0:Lcom/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$19;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2958
    iget-object v1, p0, Lcom/android/camera/CameraActivity$19;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 2964
    .local v0, "glide":Lcom/bumptech/glide/Glide;
    sget-object v1, Lcom/bumptech/glide/MemoryCategory;->LOW:Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/Glide;->setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)V

    .line 2966
    return-void
.end method
