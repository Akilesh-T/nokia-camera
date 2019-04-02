.class public final Lcom/android/camera/ui/watermark/Weather$Hotcities;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/watermark/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hotcities"
.end annotation


# static fields
.field public static final COLUMN_NAME_CITY_ENG_NAME:Ljava/lang/String; = "city_eng_name"

.field public static final COLUMN_NAME_CITY_ID:Ljava/lang/String; = "area_id"

.field public static final COLUMN_NAME_CITY_SC_NAME:Ljava/lang/String; = "city_sc_name"

.field public static final COLUMN_NAME_CITY_TC_NAME:Ljava/lang/String; = "city_tc_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final PATH_HOTCITIES:Ljava/lang/String; = "/hot_cities"

.field public static final TABLE_NAME:Ljava/lang/String; = "hot_cities"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "content://com.evenwell.providers.weather/hot_cities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/watermark/Weather$Hotcities;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    return-void
.end method
