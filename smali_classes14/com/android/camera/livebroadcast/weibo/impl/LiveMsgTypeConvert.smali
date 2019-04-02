.class public Lcom/android/camera/livebroadcast/weibo/impl/LiveMsgTypeConvert;
.super Ljava/lang/Object;
.source "LiveMsgTypeConvert.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/weibo/dispatchmessage/IMsgTypeConvert;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertType([I)I
    .locals 6
    .param p1, "sourceType"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    const/4 v0, -0x1

    .line 16
    .local v0, "targetType":I
    array-length v2, p1

    if-nez v2, :cond_0

    move v1, v0

    .line 26
    .end local v0    # "targetType":I
    .local v1, "targetType":I
    :goto_0
    return v1

    .line 20
    .end local v1    # "targetType":I
    .restart local v0    # "targetType":I
    :cond_0
    aget v2, p1, v4

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    array-length v2, p1

    if-le v2, v5, :cond_1

    .line 21
    aget v2, p1, v4

    mul-int/lit8 v2, v2, 0xa

    aget v3, p1, v5

    add-int v0, v2, v3

    :goto_1
    move v1, v0

    .line 26
    .end local v0    # "targetType":I
    .restart local v1    # "targetType":I
    goto :goto_0

    .line 23
    .end local v1    # "targetType":I
    .restart local v0    # "targetType":I
    :cond_1
    aget v0, p1, v4

    goto :goto_1
.end method
