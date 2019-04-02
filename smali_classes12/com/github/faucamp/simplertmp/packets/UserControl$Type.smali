.class public final enum Lcom/github/faucamp/simplertmp/packets/UserControl$Type;
.super Ljava/lang/Enum;
.source "UserControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/faucamp/simplertmp/packets/UserControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/faucamp/simplertmp/packets/UserControl$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum BUFFER_EMPTY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum BUFFER_READY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum PING_REQUEST:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum PONG_REPLY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum SET_BUFFER_LENGTH:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum STREAM_BEGIN:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum STREAM_DRY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum STREAM_EOF:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field public static final enum STREAM_IS_RECORDED:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

.field private static final quickLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/github/faucamp/simplertmp/packets/UserControl$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 35
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "STREAM_BEGIN"

    invoke-direct {v2, v3, v1, v1}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_BEGIN:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 46
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "STREAM_EOF"

    invoke-direct {v2, v3, v6, v6}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_EOF:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 57
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "STREAM_DRY"

    invoke-direct {v2, v3, v7, v7}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_DRY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 68
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "SET_BUFFER_LENGTH"

    invoke-direct {v2, v3, v8, v8}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->SET_BUFFER_LENGTH:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 77
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "STREAM_IS_RECORDED"

    invoke-direct {v2, v3, v9, v9}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_IS_RECORDED:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 87
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "PING_REQUEST"

    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->PING_REQUEST:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 95
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "PONG_REPLY"

    const/4 v4, 0x6

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->PONG_REPLY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 110
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "BUFFER_EMPTY"

    const/4 v4, 0x7

    const/16 v5, 0x1f

    invoke-direct {v2, v3, v4, v5}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->BUFFER_EMPTY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 128
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    const-string v3, "BUFFER_READY"

    const/16 v4, 0x8

    const/16 v5, 0x20

    invoke-direct {v2, v3, v4, v5}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->BUFFER_READY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 23
    const/16 v2, 0x9

    new-array v2, v2, [Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_BEGIN:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v3, v2, v1

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_EOF:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v3, v2, v6

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_DRY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v3, v2, v7

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->SET_BUFFER_LENGTH:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v3, v2, v8

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_IS_RECORDED:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->PING_REQUEST:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->PONG_REPLY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->BUFFER_EMPTY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->BUFFER_READY:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    aput-object v4, v2, v3

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->$VALUES:[Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->quickLookupMap:Ljava/util/Map;

    .line 134
    invoke-static {}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->values()[Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Lcom/github/faucamp/simplertmp/packets/UserControl$Type;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 135
    sget-object v4, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->quickLookupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->getIntValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->intValue:I

    .line 141
    return-void
.end method

.method public static valueOf(I)Lcom/github/faucamp/simplertmp/packets/UserControl$Type;
    .locals 2
    .param p0, "intValue"    # I

    .prologue
    .line 148
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->quickLookupMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/packets/UserControl$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    return-object v0
.end method

.method public static values()[Lcom/github/faucamp/simplertmp/packets/UserControl$Type;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->$VALUES:[Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    invoke-virtual {v0}, [Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->intValue:I

    return v0
.end method
