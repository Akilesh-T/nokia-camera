.class public Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;
.super Ljava/lang/Object;
.source "ModeSelectorItemOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/operation/ModeSelectorItemOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeConfig"
.end annotation


# instance fields
.field public mIsOnlySupportBack:Z

.field public mIsSettings:Z

.field public mIsVideoMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-boolean v0, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsVideoMode:Z

    .line 200
    iput-boolean v0, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsOnlySupportBack:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsSettings:Z

    .line 202
    return-void
.end method
