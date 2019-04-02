.class final Lcom/android/camera/one/v2/errorhandling/RecoverySuccessCallback;
.super Ljava/lang/Object;
.source "RecoverySuccessCallback.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mUsageStats:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/UsageStatistics;)V
    .locals 0
    .param p1, "usageStats"    # Lcom/android/camera/stats/UsageStatistics;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/one/v2/errorhandling/RecoverySuccessCallback;->mUsageStats:Lcom/android/camera/stats/UsageStatistics;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/errorhandling/RecoverySuccessCallback;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "successfulRecoveryStrategyName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v3, -0x1

    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/RecoverySuccessCallback;->mUsageStats:Lcom/android/camera/stats/UsageStatistics;

    const/16 v1, 0x2710

    const-string v2, "api2_repeated_failure_recovery_success"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 40
    return-void
.end method
