.class public Lcom/google/common/logging/eventprotos$CameraFailure$FailureReason;
.super Ljava/lang/Object;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/eventprotos$CameraFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FailureReason"
.end annotation


# static fields
.field public static final API_RUNTIME_EXCEPTION:I = 0x2710

.field public static final API_TIMEOUT:I = 0x2710

.field public static final OPEN_FAILURE:I = 0x2710

.field public static final RECONNECT_FAILURE:I = 0x2710

.field public static final SECURITY:I = 0x2710

.field public static final UNKNOWN_REASON:I = 0x2710


# instance fields
.field final synthetic this$1:Lcom/google/common/logging/eventprotos$CameraFailure;


# direct methods
.method public constructor <init>(Lcom/google/common/logging/eventprotos$CameraFailure;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/logging/eventprotos$CameraFailure;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/common/logging/eventprotos$CameraFailure$FailureReason;->this$1:Lcom/google/common/logging/eventprotos$CameraFailure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
