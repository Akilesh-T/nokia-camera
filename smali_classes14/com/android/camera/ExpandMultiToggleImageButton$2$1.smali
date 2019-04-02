.class Lcom/android/camera/ExpandMultiToggleImageButton$2$1;
.super Ljava/lang/Object;
.source "ExpandMultiToggleImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ExpandMultiToggleImageButton$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ExpandMultiToggleImageButton$2;


# direct methods
.method constructor <init>(Lcom/android/camera/ExpandMultiToggleImageButton$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ExpandMultiToggleImageButton$2;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2$1;->this$1:Lcom/android/camera/ExpandMultiToggleImageButton$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$2$1;->this$1:Lcom/android/camera/ExpandMultiToggleImageButton$2;

    iget-object v0, v0, Lcom/android/camera/ExpandMultiToggleImageButton$2;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$600(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;Z)V

    .line 128
    return-void
.end method
