.class public Lcom/android/camera/livebroadcast/weibo/WeiboError$Auth;
.super Ljava/lang/Object;
.source "WeiboError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auth"
.end annotation


# static fields
.field public static final ACCESS_DENIED:I = 0x5352

.field public static final APPKEY_PERMISSION_DENIED:I = 0x5359

.field public static final EXPIRED_TOKEN:I = 0x534f

.field public static final INVALID_CLIENT:I = 0x534c

.field public static final INVALID_GRANT:I = 0x534d

.field public static final INVALID_REQUEST:I = 0x534b

.field public static final REDIRECT_URI_MISMATCH:I = 0x534a

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x5353

.field public static final UNAUTHORIZED_CLIENT:I = 0x534e

.field public static final UNSUPPORTED_GRANT_TYPE:I = 0x5350

.field public static final UNSUPPORTED_RESPONSE_TYPE:I = 0x5351


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
