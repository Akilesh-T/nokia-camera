.class public Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;
.super Ljava/lang/Object;
.source "YouTubeUtils.java"


# static fields
.field public static final JSONFACTORY:Lcom/google/api/client/json/JsonFactory;

.field public static final SCOPES:[Ljava/lang/String;

.field public static final TRANSPORT:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "profile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://www.googleapis.com/auth/youtube"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->SCOPES:[Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    sput-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->TRANSPORT:Lcom/google/api/client/http/HttpTransport;

    .line 14
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    sput-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->JSONFACTORY:Lcom/google/api/client/json/JsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
