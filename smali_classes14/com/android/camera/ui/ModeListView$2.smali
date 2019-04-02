.class Lcom/android/camera/ui/ModeListView$2;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 865
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$2;->this$0:Lcom/android/camera/ui/ModeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$2;->this$0:Lcom/android/camera/ui/ModeListView;

    new-instance v1, Lcom/android/camera/ui/ModeListView$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ModeListView$2$1;-><init>(Lcom/android/camera/ui/ModeListView$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListView;->post(Ljava/lang/Runnable;)Z

    .line 879
    return-void
.end method
