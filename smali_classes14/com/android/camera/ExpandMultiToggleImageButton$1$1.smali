.class Lcom/android/camera/ExpandMultiToggleImageButton$1$1;
.super Ljava/lang/Object;
.source "ExpandMultiToggleImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ExpandMultiToggleImageButton$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ExpandMultiToggleImageButton$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ExpandMultiToggleImageButton$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ExpandMultiToggleImageButton$1;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1$1;->this$1:Lcom/android/camera/ExpandMultiToggleImageButton$1;

    iput p2, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 84
    invoke-static {}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1$1;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton$1$1;->this$1:Lcom/android/camera/ExpandMultiToggleImageButton$1;

    iget-object v0, v0, Lcom/android/camera/ExpandMultiToggleImageButton$1;->this$0:Lcom/android/camera/ExpandMultiToggleImageButton;

    invoke-static {v0, v3, p1, v3}, Lcom/android/camera/ExpandMultiToggleImageButton;->access$600(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;Z)V

    .line 87
    return-void
.end method
