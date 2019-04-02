.class public Lcom/android/camera/widget/ExternalViewerButton;
.super Landroid/widget/ImageButton;
.source "ExternalViewerButton.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mClingMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/widget/Cling;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ExtViewerButton"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/widget/ExternalViewerButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ExternalViewerButton;->mState:I

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/widget/ExternalViewerButton;->updateClingVisibility()V

    .line 45
    return-void
.end method

.method private getViewButtonResource(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 129
    const v0, 0x7f02016f

    :goto_0
    return v0

    .line 125
    :pswitch_0
    const v0, 0x7f0201f4

    goto :goto_0

    .line 127
    :pswitch_1
    const v0, 0x7f02023f

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearClingForViewer(I)V
    .locals 4
    .param p1, "viewerType"    # I

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/Cling;

    .line 73
    .local v0, "cling":Lcom/android/camera/widget/Cling;
    if-nez v0, :cond_0

    .line 74
    sget-object v1, Lcom/android/camera/widget/ExternalViewerButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cling does not exist for the given viewer type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Cling;->setReferenceView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 78
    return-void
.end method

.method public getClingForViewer(I)Lcom/android/camera/widget/Cling;
    .locals 1
    .param p1, "viewerType"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/Cling;

    return-object v0
.end method

.method public hideClings()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/Cling;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/Cling;->setVisibility(I)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ExternalViewerButton;->updateClingVisibility()V

    goto :goto_0
.end method

.method public setClingForViewer(ILcom/android/camera/widget/Cling;)V
    .locals 2
    .param p1, "viewerType"    # I
    .param p2, "cling"    # Lcom/android/camera/widget/Cling;

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    sget-object v0, Lcom/android/camera/widget/ExternalViewerButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Cannot set a null cling for viewer"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    invoke-virtual {p2, p0}, Lcom/android/camera/widget/Cling;->setReferenceView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/widget/ExternalViewerButton;->mState:I

    .line 94
    if-nez p1, :cond_1

    .line 95
    const/16 v0, 0x8

    .line 101
    .local v0, "newVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ExternalViewerButton;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ExternalViewerButton;->setVisibility(I)V

    .line 108
    :cond_0
    :goto_1
    return-void

    .line 97
    .end local v0    # "newVisibility":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ExternalViewerButton;->getViewButtonResource(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ExternalViewerButton;->setImageResource(I)V

    .line 98
    const/4 v0, 0x0

    .restart local v0    # "newVisibility":I
    goto :goto_0

    .line 103
    :cond_2
    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/widget/ExternalViewerButton;->updateClingVisibility()V

    goto :goto_1
.end method

.method public updateClingVisibility()V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/camera/widget/ExternalViewerButton;->hideClings()V

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/widget/ExternalViewerButton;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/camera/widget/ExternalViewerButton;->mClingMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/camera/widget/ExternalViewerButton;->mState:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/Cling;

    .line 141
    .local v0, "cling":Lcom/android/camera/widget/Cling;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/camera/widget/Cling;->adjustPosition()V

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Cling;->setVisibility(I)V

    .line 146
    .end local v0    # "cling":Lcom/android/camera/widget/Cling;
    :cond_0
    return-void
.end method
