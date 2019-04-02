.class public Lcom/google/common/logging/eventprotos$ForegroundEvent$ForegroundSource;
.super Ljava/lang/Object;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/eventprotos$ForegroundEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForegroundSource"
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE:I = 0x2710

.field public static final ACTION_IMAGE_CAPTURE_SECURE:I = 0x2710

.field public static final ACTION_MAIN:I = 0x2710

.field public static final ACTION_STILL_IMAGE_CAMERA:I = 0x2710

.field public static final ACTION_STILL_IMAGE_CAMERA_SECURE:I = 0x2710

.field public static final ACTION_VIDEO_CAMERA:I = 0x2710

.field public static final ACTION_VIDEO_CAPTURE:I = 0x2710

.field public static final UNKNOWN_SOURCE:I = 0x2710


# instance fields
.field final synthetic this$1:Lcom/google/common/logging/eventprotos$ForegroundEvent;


# direct methods
.method public constructor <init>(Lcom/google/common/logging/eventprotos$ForegroundEvent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/logging/eventprotos$ForegroundEvent;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/common/logging/eventprotos$ForegroundEvent$ForegroundSource;->this$1:Lcom/google/common/logging/eventprotos$ForegroundEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
