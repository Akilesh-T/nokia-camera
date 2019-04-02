.class public Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
.super Ljava/lang/Object;
.source "ModeListViewOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/operation/ModeListViewOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeBasedPosition"
.end annotation


# instance fields
.field private final mPosition:F

.field private final mTimeStamp:J


# direct methods
.method public constructor <init>(FJ)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "time"    # J

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->mPosition:F

    .line 301
    iput-wide p2, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->mTimeStamp:J

    .line 302
    return-void
.end method


# virtual methods
.method public getPosition()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->mPosition:F

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->mTimeStamp:J

    return-wide v0
.end method
