.class public Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;
.super Ljava/lang/Object;
.source "ModeListViewOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/operation/ModeListViewOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurrentStateManager"
.end annotation


# instance fields
.field private mCurrentState:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

.field final synthetic this$0:Lcom/android/camera/ui/operation/ModeListViewOperation;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/operation/ModeListViewOperation;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->this$0:Lcom/android/camera/ui/operation/ModeListViewOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->mCurrentState:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    return-object v0
.end method

.method public setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->mCurrentState:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    .line 60
    invoke-virtual {p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onCurrentState()V

    .line 61
    return-void
.end method
