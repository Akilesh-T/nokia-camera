.class Lcom/android/camera/ui/ModePicker$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ModePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModePicker;->init(Lcom/android/camera/app/AppController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModePicker;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModePicker;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/camera/ui/ModePicker$1;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v3, p0, Lcom/android/camera/ui/ModePicker$1;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-virtual {v3, p2}, Lcom/android/camera/ui/ModePicker;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 229
    .local v1, "position":I
    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ModePicker$1;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-virtual {v3, p2}, Lcom/android/camera/ui/ModePicker;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;

    .line 231
    .local v2, "vh":Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    iget-object v3, v2, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    if-nez v3, :cond_1

    .line 232
    iget-object v3, v2, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 235
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    iget-object v5, v2, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v0, v3, 0x2

    .line 236
    .local v0, "offset":I
    if-nez v1, :cond_3

    move v3, v0

    :goto_0
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_4

    .end local v0    # "offset":I
    :goto_1
    invoke-virtual {p1, v3, v4, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 238
    .end local v2    # "vh":Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    :cond_2
    return-void

    .restart local v0    # "offset":I
    .restart local v2    # "vh":Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    :cond_3
    move v3, v4

    .line 236
    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1
.end method
