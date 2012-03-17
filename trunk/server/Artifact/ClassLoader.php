<?php
/**
 *  This file is part of amfPHP
 *
 * LICENSE
 *
 * This source file is subject to the license that is bundled
 * with this package in the file license.txt.
 * @package Amfphp_Core
 */

/**
 * include this to include amfphp
 * note: this list could be generated. In the meantime maintain it manually. 
 * It would be nice to do this alphabetically, It seems however that an interface must be loaded before a class, so do as possible
 *
 * @author Ariel Sommeria-klein
 *
 */

define( 'AMFPHP_ROOTPATH', dirname(__FILE__) . DIRECTORY_SEPARATOR);

//core/common
require_once AMFPHP_ROOTPATH . 'Core/Common/ClassFindInfo.php';
require_once AMFPHP_ROOTPATH . 'Core/Common/IDeserializer.php';
require_once AMFPHP_ROOTPATH . 'Core/Common/IExceptionHandler.php';
require_once AMFPHP_ROOTPATH . 'Core/Common/IDeserializedRequestHandler.php';
require_once AMFPHP_ROOTPATH . 'Core/Common/ISerializer.php';
require_once AMFPHP_ROOTPATH . 'Core/Common/ServiceRouter.php';
require_once AMFPHP_ROOTPATH . 'Core/Common/ServiceCallParameters.php';

//core/amf
require_once AMFPHP_ROOTPATH . 'Core/Amf/Constants.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Deserializer.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Handler.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Header.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Message.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Packet.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Serializer.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Util.php';

//core/Amf/types
require_once AMFPHP_ROOTPATH . 'Core/Amf/Types/ByteArray.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Types/Undefined.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Types/Date.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Types/Xml.php';
require_once AMFPHP_ROOTPATH . 'Core/Amf/Types/XmlDocument.php';

//core
require_once AMFPHP_ROOTPATH . 'Core/Config.php';
require_once AMFPHP_ROOTPATH . 'Core/Exception.php';
require_once AMFPHP_ROOTPATH . 'Core/Gateway.php';
require_once AMFPHP_ROOTPATH . 'Core/FilterManager.php';
require_once AMFPHP_ROOTPATH . 'Core/HttpRequestGatewayFactory.php';
require_once AMFPHP_ROOTPATH . 'Core/PluginManager.php';

//artifact
require_once AMFPHP_ROOTPATH.'/Plugins/AmfphpLogger/AmfphpLogger.php';

require_once AMFPHP_ROOTPATH.'Services/artifact/db/connections/Connection.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/db/properties/Database.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/db/properties/ServerConstants.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/login/model/User.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/login/dao/LoginDAO.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/login/service/LoginService.php';

require_once AMFPHP_ROOTPATH.'Services/artifact/profile/model/UserProfile.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/profile/model/CompleteProfileWrapper.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/profile/util/ProfileUtil.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/profile/dao/UserProfileDAO.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/profile/service/ProfileService.php';

require_once AMFPHP_ROOTPATH.'Services/artifact/friends/dao/FriendsDAO.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/friends/util/FriendsUtil.php';

require_once AMFPHP_ROOTPATH.'Services/artifact/game/dao/GameDAO.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/game/model/GameProfile.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/game/util/GameUtil.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/game/model/Questionnaire.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/game/model/GameProgressResponse.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/game/model/ProgressType.php';

require_once AMFPHP_ROOTPATH.'Services/artifact/searchparty/util/CurrentSearchPartyUtil.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/searchparty/dao/CurrentSearchPartyDAO.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/searchparty/model/CurrentSearchParty.php';

require_once AMFPHP_ROOTPATH.'Services/artifact/info/util/ArtifactUtil.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/info/dao/ArtifactDAO.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/info/model/ArtifactInfo.php';

require_once AMFPHP_ROOTPATH.'Services/artifact/inventory/util/InventoryUtil.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/inventory/model/Inventory.php';
require_once AMFPHP_ROOTPATH.'Services/artifact/inventory/dao/InventoryDAO.php';

session_start();

?>
