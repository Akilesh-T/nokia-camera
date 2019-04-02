.class Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ModePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModePicker$ModeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mModeIndex:I

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/camera/ui/ModePicker$ModeListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModePicker$ModeListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/camera/ui/ModePicker$ModeListAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->this$1:Lcom/android/camera/ui/ModePicker$ModeListAdapter;

    .line 41
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mModeIndex:I

    .line 42
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    iput-object p2, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 43
    return-void
.end method
