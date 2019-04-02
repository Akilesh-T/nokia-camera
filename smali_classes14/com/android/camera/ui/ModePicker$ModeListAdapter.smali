.class Lcom/android/camera/ui/ModePicker$ModeListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ModePicker.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;",
        ">;",
        "Lcom/android/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private final H_PADDING:I

.field private final SELECT_COLOR:I

.field private final TEXT_SIZE:I

.field private final UNSELECT_COLOR:I

.field private final V_PADDING:I

.field private final mContext:Landroid/content/Context;

.field private final mModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/ui/ModePicker;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModePicker;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/ui/ModePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->H_PADDING:I

    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->V_PADDING:I

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->TEXT_SIZE:I

    .line 60
    const v0, 0x7f0e000f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->SELECT_COLOR:I

    .line 61
    const v0, 0x7f0e0010

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->UNSELECT_COLOR:I

    .line 62
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(I)I
    .locals 2
    .param p1, "modeIndex"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLeftModeIndex()I
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v2}, Lcom/android/camera/ui/ModePicker;->access$000(Lcom/android/camera/ui/ModePicker;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 82
    .local v0, "currentIndex":I
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 85
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v1}, Lcom/android/camera/ui/ModePicker;->access$000(Lcom/android/camera/ui/ModePicker;)I

    move-result v1

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "modeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    return-object v0
.end method

.method public getRightModeIndex()I
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v2}, Lcom/android/camera/ui/ModePicker;->access$000(Lcom/android/camera/ui/ModePicker;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, "currentIndex":I
    if-lez v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v1}, Lcom/android/camera/ui/ModePicker;->access$000(Lcom/android/camera/ui/ModePicker;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->onBindViewHolder(Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, "modeIndex":I
    iput v0, p1, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mModeIndex:I

    .line 117
    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v1}, Lcom/android/camera/ui/ModePicker;->access$100(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    monitor-enter v2

    .line 118
    :try_start_0
    iget-object v1, p1, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v4}, Lcom/android/camera/ui/ModePicker;->access$100(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v5}, Lcom/android/camera/ui/ModePicker;->access$200(Lcom/android/camera/ui/ModePicker;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/android/camera/util/CameraUtil;->getCameraModeText(ILandroid/content/Context;ILcom/android/camera/one/OneCamera$Facing;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v2, p1, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v1}, Lcom/android/camera/ui/ModePicker;->access$000(Lcom/android/camera/ui/ModePicker;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->SELECT_COLOR:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 120
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->UNSELECT_COLOR:I

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 105
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "view":Landroid/widget/TextView;
    iget v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->H_PADDING:I

    iget v2, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->V_PADDING:I

    iget v3, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->H_PADDING:I

    iget v4, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->V_PADDING:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    iget v1, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->UNSELECT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    new-instance v1, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/ModePicker$ModeListAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/ModePicker$ModeListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->mModeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePicker$ModeListAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method
