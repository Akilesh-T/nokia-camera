.class Lcom/android/camera/ui/ProgressRenderer$1;
.super Ljava/lang/Object;
.source "ProgressRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ProgressRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ProgressRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ProgressRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ProgressRenderer;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/ui/ProgressRenderer$1;->this$0:Lcom/android/camera/ui/ProgressRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/ProgressRenderer$1;->this$0:Lcom/android/camera/ui/ProgressRenderer;

    invoke-static {v0}, Lcom/android/camera/ui/ProgressRenderer;->access$000(Lcom/android/camera/ui/ProgressRenderer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 44
    return-void
.end method
