.class final Lcom/android/camera/one/v2/errorhandling/FatalErrorDialogFailureHandler;
.super Ljava/lang/Object;
.source "FatalErrorDialogFailureHandler.java"

# interfaces
.implements Lcom/android/camera/one/v2/errorhandling/FailureHandler;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

.field private final mUsageStats:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method constructor <init>(Lcom/android/camera/FatalErrorHandler;Lcom/android/camera/stats/UsageStatistics;)V
    .locals 0
    .param p1, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;
    .param p2, "usageStats"    # Lcom/android/camera/stats/UsageStatistics;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/errorhandling/FatalErrorDialogFailureHandler;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    .line 37
    iput-object p2, p0, Lcom/android/camera/one/v2/errorhandling/FatalErrorDialogFailureHandler;->mUsageStats:Lcom/android/camera/stats/UsageStatistics;

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 42
    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/FatalErrorDialogFailureHandler;->mUsageStats:Lcom/android/camera/stats/UsageStatistics;

    const/16 v1, 0x2710

    const-string v2, "api2_repeated_failure_2"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/FatalErrorDialogFailureHandler;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    sget-object v1, Lcom/android/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->handleFatalError(Lcom/android/camera/FatalErrorHandler$Reason;)V

    .line 46
    return-void
.end method
