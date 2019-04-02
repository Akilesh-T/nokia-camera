.class public Lcom/sina/sinalivesdk/util/Constants;
.super Ljava/lang/Object;


# static fields
.field public static CURRENT_APP_KEY:Ljava/lang/String; = null

.field public static CURRENT_CONNECT_BUSINESS:Ljava/lang/String; = null

.field public static CURRENT_CONTAINER_ID:J = 0x0L

.field public static CURRENT_CONTAINER_TYPE:I = 0x0

.field public static CURRENT_ROOM_ID:Ljava/lang/String; = null

.field public static IS_CHAT_ROOM:Z = false

.field public static final KEY_APPKEY:Ljava/lang/String; = "appkey"

.field public static final KEY_AUTHORIZATION:Ljava/lang/String; = "authorization"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_IS_CHATROOM:Ljava/lang/String; = "is_chat_room"

.field public static final KEY_NEED_SSL:Ljava/lang/String; = "need_ssl"

.field public static final KEY_REQUEST_PORT:Ljava/lang/String; = "request_port"

.field public static final KEY_REQUEST_URL:Ljava/lang/String; = "request_url"

.field public static final KEY_VP:Ljava/lang/String; = "vp"

.field public static final KEY_WM:Ljava/lang/String; = "wm"

.field public static NEED_SSL:Z = false

.field public static REQUEST_PORT:I = 0x0

.field public static REQUEST_URL:Ljava/lang/String; = null

.field public static SERVER_HOST:Ljava/lang/String; = null

.field public static final SERVER_V4:Ljava/lang/String; = "/2/"

.field public static final WEIBO_DEFAULT_APPKEY:Ljava/lang/String; = "weibo_live_im_appkey"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sina/sinalivesdk/util/Constants;->IS_CHAT_ROOM:Z

    const-string v0, ""

    sput-object v0, Lcom/sina/sinalivesdk/util/Constants;->REQUEST_URL:Ljava/lang/String;

    const-string v0, "https://api.weibo.cn"

    sput-object v0, Lcom/sina/sinalivesdk/util/Constants;->SERVER_HOST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
