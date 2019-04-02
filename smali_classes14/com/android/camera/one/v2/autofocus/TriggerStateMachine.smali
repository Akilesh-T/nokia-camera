.class final Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;
.super Ljava/lang/Object;
.source "TriggerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mCurrentState:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

.field private final mDoneStates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFinishFrameNumber:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastTriggerFrameNumber:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTriggerStart:I


# direct methods
.method public constructor <init>(ILjava/util/Set;)V
    .locals 2
    .param p1, "triggerStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "doneStates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mTriggerStart:I

    .line 65
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mDoneStates:Ljava/util/Set;

    .line 66
    sget-object v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->WAITING_FOR_TRIGGER:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mCurrentState:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    .line 67
    iput-object v1, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mLastTriggerFrameNumber:Ljava/lang/Long;

    .line 68
    iput-object v1, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mLastFinishFrameNumber:Ljava/lang/Long;

    .line 69
    return-void
.end method


# virtual methods
.method public update(JLjava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 7
    .param p1, "frameNumber"    # J
    .param p3, "triggerState"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "state"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mTriggerStart:I

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 77
    .local v1, "triggeredNow":Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mDoneStates:Ljava/util/Set;

    invoke-interface {v4, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    .local v0, "doneNow":Z
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mCurrentState:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    sget-object v5, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->WAITING_FOR_TRIGGER:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    if-ne v4, v5, :cond_1

    .line 80
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mLastTriggerFrameNumber:Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mLastTriggerFrameNumber:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 81
    :cond_0
    if-eqz v1, :cond_1

    .line 82
    sget-object v4, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->TRIGGERED:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    iput-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mCurrentState:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    .line 83
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mLastTriggerFrameNumber:Ljava/lang/Long;

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mCurrentState:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    sget-object v5, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->TRIGGERED:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    if-ne v4, v5, :cond_4

    .line 89
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mLastFinishFrameNumber:Ljava/lang/Long;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mLastFinishFrameNumber:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_4

    .line 90
    :cond_2
    if-eqz v0, :cond_4

    .line 91
    sget-object v3, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->WAITING_FOR_TRIGGER:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    iput-object v3, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mCurrentState:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->mLastFinishFrameNumber:Ljava/lang/Long;

    .line 98
    :goto_1
    return v2

    .end local v0    # "doneNow":Z
    .end local v1    # "triggeredNow":Z
    :cond_3
    move v1, v3

    .line 76
    goto :goto_0

    .restart local v0    # "doneNow":Z
    .restart local v1    # "triggeredNow":Z
    :cond_4
    move v2, v3

    .line 98
    goto :goto_1
.end method
