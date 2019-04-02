.class Lcom/android/camera/ui/ModeListView$3;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeListView;->init(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$3;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$3;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView;->access$1500(Lcom/android/camera/ui/ModeListView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 885
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$3;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView;->access$1500(Lcom/android/camera/ui/ModeListView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020209

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 886
    return-void
.end method
