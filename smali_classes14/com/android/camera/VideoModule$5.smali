.class Lcom/android/camera/VideoModule$5;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/camera/VideoModule$5;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/camera/VideoModule$5;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1900(Lcom/android/camera/VideoModule;)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/VideoModule$5;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2000(Lcom/android/camera/VideoModule;)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/VideoModule$5;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2100(Lcom/android/camera/VideoModule;)Z

    .line 538
    return-void
.end method
