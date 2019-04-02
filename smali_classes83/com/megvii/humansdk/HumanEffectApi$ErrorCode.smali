.class Lcom/megvii/humansdk/HumanEffectApi$ErrorCode;
.super Ljava/lang/Object;
.source "HumanEffectApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/humansdk/HumanEffectApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorCode"
.end annotation


# static fields
.field static final MG_HUM_FAILURE:I = 0x3

.field static final MG_HUM_INVALID_ARGUMENT:I = 0x1

.field static final MG_HUM_INVALID_HANDLE:I = 0x2

.field static final MG_HUM_OK:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
