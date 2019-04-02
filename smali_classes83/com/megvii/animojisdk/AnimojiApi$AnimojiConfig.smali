.class public Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;
.super Ljava/lang/Object;
.source "AnimojiApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/animojisdk/AnimojiApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimojiConfig"
.end annotation


# instance fields
.field public imageHeight:I

.field public imageRotation:I

.field public imageWidth:I

.field public multiSample:I

.field public renderType:I

.field public resource:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
