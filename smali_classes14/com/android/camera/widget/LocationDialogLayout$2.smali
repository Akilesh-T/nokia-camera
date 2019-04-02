.class Lcom/android/camera/widget/LocationDialogLayout$2;
.super Ljava/lang/Object;
.source "LocationDialogLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/LocationDialogLayout;->updateSubviewReferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/LocationDialogLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/LocationDialogLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/LocationDialogLayout;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/widget/LocationDialogLayout$2;->this$0:Lcom/android/camera/widget/LocationDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout$2;->this$0:Lcom/android/camera/widget/LocationDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/LocationDialogLayout;->access$100(Lcom/android/camera/widget/LocationDialogLayout;)Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout$2;->this$0:Lcom/android/camera/widget/LocationDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/LocationDialogLayout;->access$100(Lcom/android/camera/widget/LocationDialogLayout;)Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/LocationDialogLayout$2;->this$0:Lcom/android/camera/widget/LocationDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/LocationDialogLayout;->access$000(Lcom/android/camera/widget/LocationDialogLayout;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;->onConfirm(Z)V

    .line 94
    :cond_0
    return-void
.end method
